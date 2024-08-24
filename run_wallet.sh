#!/bin/bash
docker compose build wallet
docker compose run wallet ./wallet_executable
