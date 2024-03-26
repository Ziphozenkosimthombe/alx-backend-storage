#!/usr/bin/env python3
"""insert the document in python"""


def insert_school(mongo_collection, **kwargs) -> str:
    return mongo_collection.insert_one(kwargs).inserted_id
