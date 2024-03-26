#!/usr/bin/env python3

""" list all docs"""


def list_all(mongo_collection) -> list:
    return mongo_collection.find()
