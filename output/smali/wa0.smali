.class public final synthetic Lwa0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkb0;


# static fields
.field public static final a:Lkb0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lwa0;

    invoke-direct {v0}, Lwa0;-><init>()V

    sput-object v0, Lwa0;->a:Lkb0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 17

    move-object/from16 v1, p1

    check-cast v1, Lyx0;

    .line 1
    sget-object v0, Lva0;->a:Lkb0;

    const-string v2, "openableIntents"

    .line 2
    invoke-interface {v1}, Lyx0;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v0, "data"

    move-object/from16 v4, p2

    .line 3
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    const-string v0, "intents"

    .line 5
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    .line 6
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 7
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v7, v0, :cond_8

    .line 8
    :try_start_2
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    const-string v8, "id"

    .line 9
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "u"

    .line 10
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "i"

    .line 11
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "m"

    .line 12
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "p"

    .line 13
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "c"

    .line 14
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "intent_url"

    .line 15
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 16
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 17
    :try_start_3
    invoke-static {v14, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v15
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v15, v0

    const-string v0, "Error parsing the url: "

    .line 18
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v16

    if-eqz v16, :cond_0

    invoke-virtual {v0, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v14

    :goto_1
    invoke-static {v0, v15}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const/4 v15, 0x0

    :goto_2
    const/4 v0, 0x1

    if-nez v15, :cond_6

    .line 19
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .line 20
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 21
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v15, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 22
    :cond_2
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 23
    invoke-virtual {v15, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    :cond_3
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 25
    invoke-virtual {v15, v11}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    :cond_4
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 27
    invoke-virtual {v15, v12}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    :cond_5
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    const/4 v9, 0x2

    const-string v10, "/"

    .line 29
    invoke-virtual {v13, v10, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    .line 30
    array-length v11, v10

    if-ne v11, v9, :cond_6

    .line 31
    new-instance v9, Landroid/content/ComponentName;

    aget-object v11, v10, v6

    aget-object v10, v10, v0

    invoke-direct {v9, v11, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_6
    const/high16 v9, 0x10000

    .line 32
    invoke-virtual {v3, v15, v9}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    if-eqz v9, :cond_7

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    .line 33
    :goto_3
    :try_start_4
    invoke-virtual {v5, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v8, v0

    const-string v0, "Error constructing openable urls response."

    .line 34
    invoke-static {v0, v8}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v8, v0

    const-string v0, "Error parsing the intent data."

    .line 35
    invoke-static {v0, v8}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 36
    :cond_8
    check-cast v1, Lod0;

    invoke-interface {v1, v2, v5}, Lod0;->d0(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_5

    .line 37
    :catch_3
    check-cast v1, Lod0;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v1, v2, v0}, Lod0;->d0(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_5

    .line 38
    :catch_4
    check-cast v1, Lod0;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v1, v2, v0}, Lod0;->d0(Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_5
    return-void
.end method
