.class public final Lax4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroid/os/Bundle;

.field public c:Landroid/os/Bundle;

.field public final synthetic d:Lex4;


# direct methods
.method public constructor <init>(Lex4;)V
    .locals 0

    iput-object p1, p0, Lax4;->d:Lex4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "default_event_parameters"

    .line 1
    invoke-static {p1}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lax4;->a:Ljava/lang/String;

    new-instance p1, Landroid/os/Bundle;

    .line 2
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lax4;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 11

    iget-object v0, p0, Lax4;->c:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Lax4;->d:Lex4;

    .line 1
    invoke-virtual {v0}, Lex4;->n()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lax4;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    .line 2
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 4
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v3, v4, :cond_8

    .line 5
    :try_start_1
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "n"

    .line 6
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "t"

    .line 7
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 8
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v8, 0x64

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eq v7, v8, :cond_3

    const/16 v8, 0x6c

    if-eq v7, v8, :cond_2

    const/16 v8, 0x73

    if-eq v7, v8, :cond_1

    goto :goto_1

    :cond_1
    const-string v7, "s"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x0

    goto :goto_2

    :cond_2
    const-string v7, "l"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x2

    goto :goto_2

    :cond_3
    const-string v7, "d"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v7, -0x1

    :goto_2
    const-string v8, "v"

    if-eqz v7, :cond_7

    if-eq v7, v10, :cond_6

    if-eq v7, v9, :cond_5

    :try_start_2
    iget-object v4, p0, Lax4;->d:Lex4;

    iget-object v4, v4, Lly4;->a:Lrx4;

    .line 9
    invoke-virtual {v4}, Lrx4;->a()Lqw4;

    move-result-object v4

    .line 10
    iget-object v4, v4, Lqw4;->f:Low4;

    const-string v5, "Unrecognized persisted bundle type. Type"

    .line 11
    invoke-virtual {v4, v5, v6}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 12
    :cond_5
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 13
    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_3

    .line 14
    :cond_6
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 15
    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_3

    .line 16
    :cond_7
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 17
    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 18
    :catch_0
    :try_start_3
    iget-object v4, p0, Lax4;->d:Lex4;

    iget-object v4, v4, Lly4;->a:Lrx4;

    .line 19
    invoke-virtual {v4}, Lrx4;->a()Lqw4;

    move-result-object v4

    .line 20
    iget-object v4, v4, Lqw4;->f:Low4;

    const-string v5, "Error reading value from SharedPreferences. Value dropped"

    .line 21
    invoke-virtual {v4, v5}, Low4;->a(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 22
    :cond_8
    iput-object v1, p0, Lax4;->c:Landroid/os/Bundle;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    iget-object v0, p0, Lax4;->d:Lex4;

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 23
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 24
    iget-object v0, v0, Lqw4;->f:Low4;

    const-string v1, "Error loading bundle from SharedPreferences. Values will be lost"

    .line 25
    invoke-virtual {v0, v1}, Low4;->a(Ljava/lang/String;)V

    .line 26
    :cond_9
    :goto_4
    iget-object v0, p0, Lax4;->c:Landroid/os/Bundle;

    if-nez v0, :cond_a

    iget-object v0, p0, Lax4;->b:Landroid/os/Bundle;

    iput-object v0, p0, Lax4;->c:Landroid/os/Bundle;

    .line 27
    :cond_a
    :goto_5
    iget-object v0, p0, Lax4;->c:Landroid/os/Bundle;

    return-object v0
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 8

    if-nez p1, :cond_0

    new-instance p1, Landroid/os/Bundle;

    .line 1
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_0
    iget-object v0, p0, Lax4;->d:Lex4;

    .line 2
    invoke-virtual {v0}, Lex4;->n()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lax4;->a:Ljava/lang/String;

    .line 4
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_2

    .line 5
    :cond_1
    iget-object v1, p0, Lax4;->a:Ljava/lang/String;

    .line 6
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 7
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 8
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 9
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "n"

    .line 10
    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "v"

    .line 11
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    instance-of v4, v5, Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "t"

    if-eqz v4, :cond_3

    :try_start_1
    const-string v4, "s"

    .line 13
    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 14
    :cond_3
    instance-of v4, v5, Ljava/lang/Long;

    if-eqz v4, :cond_4

    const-string v4, "l"

    .line 15
    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 16
    :cond_4
    instance-of v4, v5, Ljava/lang/Double;

    if-eqz v4, :cond_5

    const-string v4, "d"

    .line 17
    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    :goto_1
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 19
    :cond_5
    iget-object v4, p0, Lax4;->d:Lex4;

    iget-object v4, v4, Lly4;->a:Lrx4;

    .line 20
    invoke-virtual {v4}, Lrx4;->a()Lqw4;

    move-result-object v4

    .line 21
    iget-object v4, v4, Lqw4;->f:Low4;

    const-string v6, "Cannot serialize bundle value to SharedPreferences. Type"

    .line 22
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 23
    invoke-virtual {v4, v6, v5}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 24
    iget-object v5, p0, Lax4;->d:Lex4;

    iget-object v5, v5, Lly4;->a:Lrx4;

    .line 25
    invoke-virtual {v5}, Lrx4;->a()Lqw4;

    move-result-object v5

    .line 26
    iget-object v5, v5, Lqw4;->f:Low4;

    const-string v6, "Cannot serialize bundle value to SharedPreferences"

    .line 27
    invoke-virtual {v5, v6, v4}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 28
    :cond_6
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 30
    :goto_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-object p1, p0, Lax4;->c:Landroid/os/Bundle;

    return-void
.end method
