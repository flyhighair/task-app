# Task App

## DBスキーマ

### usersテーブル

|カラム名|データ型|
| ---- | ---- |
|id|integer|
|name|varchar|
|email|varchar|
|password|varchar|
|role_id|integer|
|created_at|timestamp|
|updated_at|timestamp|

### rolesテーブル

|カラム名|データ型|
| ---- | ---- |
|id|integer|
|role|varchar|
|created_at|timestamp|
|updated_at|timestamp|

### tasksテーブル

|カラム名|データ型|
| ---- | ---- |
|id|integer|
|user_id|integer|
|name|varchar|
|description|text|
|status_id|integer|
|priority_id|integer|
|deadline|timestamp|
|created_at|timestamp|
|updated_at|timestamp|

### statusesテーブル

|カラム名|データ型|
| ---- | ---- |
|id|integer|
|status|varchar|
|created_at|timestamp|
|updated_at|timestamp|

### prioritiesテーブル

|カラム名|データ型|
| ---- | ---- |
|id|integer|
|priority|varchar|
|created_at|timestamp|
|updated_at|timestamp|

### labelsテーブル

|カラム名|データ型|
| ---- | ---- |
|id|integer|
|label|varchar|
|created_at|timestamp|
|updated_at|timestamp|

### task_labelテーブル

|カラム名|データ型|
| ---- | ---- |
|id|integer|
|task_id|integer|
|label_id|integer|
|created_at|timestamp|
|updated_at|timestamp|
