.class public Lbm5;
.super Lph5;
.source "SourceFile"

# interfaces
.implements Lam5;


# instance fields
.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lfl5;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Ldl5;->f:Ldl5;

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lph5;-><init>(Ljava/lang/String;Ljava/lang/String;Lfl5;Ldl5;)V

    .line 3
    iput-object p4, p0, Lbm5;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lvl5;Z)Z
    .locals 11

    if-eqz p2, :cond_5

    .line 1
    invoke-virtual {p0}, Lph5;->b()Lel5;

    move-result-object p2

    .line 2
    iget-object v0, p1, Lvl5;->b:Ljava/lang/String;

    .line 3
    iget-object v1, p2, Lel5;->d:Ljava/util/Map;

    const-string v2, "X-CRASHLYTICS-GOOGLE-APP-ID"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p2, Lel5;->d:Ljava/util/Map;

    const-string v1, "X-CRASHLYTICS-API-CLIENT-TYPE"

    const-string v2, "android"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lbm5;->f:Ljava/lang/String;

    .line 6
    iget-object v1, p2, Lel5;->d:Ljava/util/Map;

    const-string v2, "X-CRASHLYTICS-API-CLIENT-VERSION"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p1, Lvl5;->c:Lxl5;

    invoke-interface {v0}, Lxl5;->a()Ljava/util/Map;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 9
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 10
    iget-object v3, p2, Lel5;->d:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p1, Lvl5;->c:Lxl5;

    .line 12
    invoke-interface {p1}, Lxl5;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "report[identifier]"

    invoke-virtual {p2, v1, v0}, Lel5;->b(Ljava/lang/String;Ljava/lang/String;)Lel5;

    .line 13
    invoke-interface {p1}, Lxl5;->d()[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    const-string v1, "application/octet-stream"

    const-string v2, " to report "

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 14
    sget-object v0, Lah5;->a:Lah5;

    const-string v4, "Adding single file "

    invoke-static {v4}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 15
    invoke-interface {p1}, Lxl5;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lxl5;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lah5;->b(Ljava/lang/String;)V

    .line 16
    invoke-interface {p1}, Lxl5;->e()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lxl5;->c()Ljava/io/File;

    move-result-object p1

    const-string v2, "report[file]"

    invoke-virtual {p2, v2, v0, v1, p1}, Lel5;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lel5;

    goto :goto_2

    .line 17
    :cond_1
    invoke-interface {p1}, Lxl5;->d()[Ljava/io/File;

    move-result-object v0

    array-length v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v7, v0, v5

    .line 18
    sget-object v8, Lah5;->a:Lah5;

    const-string v9, "Adding file "

    invoke-static {v9}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 19
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lxl5;->b()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lah5;->b(Ljava/lang/String;)V

    .line 20
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "report[file"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v8, v9, v1, v7}, Lel5;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lel5;

    add-int/2addr v6, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 21
    :cond_2
    :goto_2
    sget-object p1, Lah5;->a:Lah5;

    const-string v0, "Sending report to: "

    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 22
    iget-object v1, p0, Lph5;->a:Ljava/lang/String;

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lah5;->b(Ljava/lang/String;)V

    .line 24
    :try_start_0
    invoke-virtual {p2}, Lel5;->a()Lgl5;

    move-result-object p2

    .line 25
    iget v0, p2, Lgl5;->a:I

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create report request ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "X-REQUEST-ID"

    .line 27
    iget-object p2, p2, Lgl5;->c:Lokhttp3/Headers;

    invoke-virtual {p2, v2}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 28
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lah5;->b(Ljava/lang/String;)V

    .line 29
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Result was: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lah5;->b(Ljava/lang/String;)V

    .line 30
    invoke-static {v0}, Lc50;->A0(I)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    return v3

    :catch_0
    move-exception p1

    .line 31
    sget-object p2, Lah5;->a:Lah5;

    const/4 v0, 0x6

    .line 32
    invoke-virtual {p2, v0}, Lah5;->a(I)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "FirebaseCrashlytics"

    const-string v0, "Create report HTTP request failed."

    .line 33
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    :cond_4
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 35
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "An invalid data collection token was used."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
