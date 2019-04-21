# Task App

## DBスキーマ

### usersテーブル

|カラム名|データ型|
| ---- | ---- |
|id|integer|
|name|varchar|
|email|varchar|
|password|varchar|
|role|integer|
|created_at|timestamp|
|updated_at|timestamp|

### tasksテーブル

|カラム名|データ型|
| ---- | ---- |
|id|integer|
|user_id|integer|
|name|varchar|
|description|text|
|status|integer|
|priority|integer|
|deadline|timestamp|
|created_at|timestamp|
|updated_at|timestamp|

### labelsテーブル

|カラム名|データ型|
| ---- | ---- |
|id|int|
|task_id|int|
|label|varchar|
|created_at|timestamp|
|updated_at|timestamp|
