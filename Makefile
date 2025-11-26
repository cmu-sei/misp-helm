# Copyright 2025 Carnegie Mellon University.
# NO WARRANTY. THIS CARNEGIE MELLON UNIVERSITY AND SOFTWARE ENGINEERING INSTITUTE MATERIAL IS FURNISHED ON AN "AS-IS" BASIS. 
# CARNEGIE MELLON UNIVERSITY MAKES NO WARRANTIES OF ANY KIND, EITHER EXPRESSED OR IMPLIED, AS TO ANY MATTER INCLUDING, 
# BUT NOT LIMITED TO, WARRANTY OF FITNESS FOR PURPOSE OR MERCHANTABILITY, EXCLUSIVITY, OR RESULTS OBTAINED FROM USE OF THE 
# MATERIAL. CARNEGIE MELLON #UNIVERSITY DOES NOT MAKE ANY WARRANTY OF ANY KIND WITH RESPECT TO FREEDOM FROM PATENT, TRADEMARK, OR 
# COPYRIGHT INFRINGEMENT.
# Licensed under an Apache License v2.0-style license, please see license.txt or contact permission@sei.cmu.edu for full terms.
# [DISTRIBUTION STATEMENT A] This material has been approved for public release and unlimited distribution.  
# Please see Copyright #notice for non-US Government use and distribution.
# This Software includes and/or makes use of Third-Party Software each subject to its own license.
# DM25-1432
# ANSI colors
GREEN=\033[0;32m
CYAN=\033[0;34m
RED=\033[0;31m
RESET=\033[0m

.PHONY: default
default: lint unittest checkov test test-upgrade clean

lint:
	@echo "$(RED)========== LINTING ==========$(RESET)"
	@echo "$(GREEN)========== [1/3] Removing charts directory ==========$(RESET)"
	rm -rf charts/
	rm -f Chart.lock
	@echo "$(CYAN)========== [2/3] Updating Helm dependencies ==========$(RESET)"
	helm dependency update ./
	@echo "$(GREEN)========== [3/3] Running Helm lint ==========$(RESET)"
	ct lint ./

unittest: 
	@echo "$(RED)========== UNITTEST ==========$(RESET)"
	@echo "$(GREEN)========== [1/1] Running Helm unittest ==========$(RESET)"
	helm unittest ./

test: 
	@echo "$(RED)========== DEPLOYING ==========$(RESET)"
	@echo "$(GREEN)========== [1/2] Removing charts directory and namespace ==========$(RESET)"
	rm -rf charts/
	rm -f Chart.lock
	kubectl delete --ignore-not-found ns misp
	@echo "$(GREEN)========== [2/2] Testing if installable ==========$(RESET)"
	kubectl create ns misp
	ct install --skip-clean-up --namespace misp

test-upgrade:
	@echo "$(RED)========== UPGRADING ==========$(RESET)"
	@echo "$(GREEN)========== [1/1] Testing upgrade ==========$(RESET)" 
	ct install --upgrade --skip-clean-up --namespace misp

checkov:
	@echo "$(RED)========== SECURITY SCANNING ==========$(RESET)"
	@echo "$(GREEN)========== [1/3] Removing charts directory ==========$(RESET)"
	rm -rf charts/
	rm -f Chart.lock
	@echo "$(CYAN)========== [2/3] Updating Helm dependencies ==========$(RESET)"
	helm dependency update ./
	@echo "$(GREEN)========== [3/3] Running checkov ==========$(RESET)"
	checkov --config-file .checkov.yaml -o cli

clean:
	@echo "$(RED)========== CLEANING UP ==========$(RESET)"
	rm -rf charts/
	rm -f Chart.lock
	kubectl delete --ignore-not-found ns misp