.class public abstract Lvm5;
.super Lph5;
.source "SourceFile"


# instance fields
.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lfl5;Ldl5;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lph5;-><init>(Ljava/lang/String;Ljava/lang/String;Lfl5;Ldl5;)V

    .line 2
    iput-object p5, p0, Lvm5;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public d(Lom5;Z)Z
    .locals 3

    if-eqz p2, :cond_4

    .line 1
    invoke-virtual {p0}, Lph5;->b()Lel5;

    move-result-object p2

    .line 2
    iget-object v0, p1, Lom5;->a:Ljava/lang/String;

    .line 3
    iget-object v1, p2, Lel5;->d:Ljava/util/Map;

    const-string v2, "X-CRASHLYTICS-ORG-ID"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p1, Lom5;->b:Ljava/lang/String;

    .line 5
    iget-object v1, p2, Lel5;->d:Ljava/util/Map;

    const-string v2, "X-CRASHLYTICS-GOOGLE-APP-ID"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p2, Lel5;->d:Ljava/util/Map;

    const-string v1, "X-CRASHLYTICS-API-CLIENT-TYPE"

    const-string v2, "android"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lvm5;->f:Ljava/lang/String;

    .line 8
    iget-object v1, p2, Lel5;->d:Ljava/util/Map;

    const-string v2, "X-CRASHLYTICS-API-CLIENT-VERSION"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p1, Lom5;->a:Ljava/lang/String;

    const-string v1, "org_id"

    .line 10
    invoke-virtual {p2, v1, v0}, Lel5;->b(Ljava/lang/String;Ljava/lang/String;)Lel5;

    iget-object v0, p1, Lom5;->c:Ljava/lang/String;

    const-string v1, "app[identifier]"

    .line 11
    invoke-virtual {p2, v1, v0}, Lel5;->b(Ljava/lang/String;Ljava/lang/String;)Lel5;

    iget-object v0, p1, Lom5;->g:Ljava/lang/String;

    const-string v1, "app[name]"

    .line 12
    invoke-virtual {p2, v1, v0}, Lel5;->b(Ljava/lang/String;Ljava/lang/String;)Lel5;

    iget-object v0, p1, Lom5;->d:Ljava/lang/String;

    const-string v1, "app[display_version]"

    .line 13
    invoke-virtual {p2, v1, v0}, Lel5;->b(Ljava/lang/String;Ljava/lang/String;)Lel5;

    iget-object v0, p1, Lom5;->e:Ljava/lang/String;

    const-string v1, "app[build_version]"

    .line 14
    invoke-virtual {p2, v1, v0}, Lel5;->b(Ljava/lang/String;Ljava/lang/String;)Lel5;

    iget v0, p1, Lom5;->h:I

    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "app[source]"

    invoke-virtual {p2, v1, v0}, Lel5;->b(Ljava/lang/String;Ljava/lang/String;)Lel5;

    iget-object v0, p1, Lom5;->i:Ljava/lang/String;

    const-string v1, "app[minimum_sdk_version]"

    .line 16
    invoke-virtual {p2, v1, v0}, Lel5;->b(Ljava/lang/String;Ljava/lang/String;)Lel5;

    const-string v0, "app[built_sdk_version]"

    const-string v1, "0"

    .line 17
    invoke-virtual {p2, v0, v1}, Lel5;->b(Ljava/lang/String;Ljava/lang/String;)Lel5;

    .line 18
    iget-object v0, p1, Lom5;->f:Ljava/lang/String;

    invoke-static {v0}, Lvh5;->r(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 19
    iget-object p1, p1, Lom5;->f:Ljava/lang/String;

    const-string v0, "app[instance_identifier]"

    invoke-virtual {p2, v0, p1}, Lel5;->b(Ljava/lang/String;Ljava/lang/String;)Lel5;

    .line 20
    :cond_0
    sget-object p1, Lah5;->a:Lah5;

    const-string v0, "Sending app info to "

    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 21
    iget-object v1, p0, Lph5;->a:Ljava/lang/String;

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lah5;->b(Ljava/lang/String;)V

    .line 23
    :try_start_0
    invoke-virtual {p2}, Lel5;->a()Lgl5;

    move-result-object v0

    .line 24
    iget v1, v0, Lgl5;->a:I

    const-string v2, "POST"

    .line 25
    iget-object p2, p2, Lel5;->a:Ldl5;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    .line 26
    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "Create"

    goto :goto_0

    :cond_1
    const-string p2, "Update"

    .line 27
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " app request ID: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "X-REQUEST-ID"

    .line 28
    iget-object v0, v0, Lgl5;->c:Lokhttp3/Headers;

    invoke-virtual {v0, p2}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 29
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lah5;->b(Ljava/lang/String;)V

    .line 30
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Result was "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lah5;->b(Ljava/lang/String;)V

    .line 31
    invoke-static {v1}, Lc50;->A0(I)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1

    :catch_0
    move-exception p1

    .line 32
    sget-object p2, Lah5;->a:Lah5;

    const/4 v0, 0x6

    .line 33
    invoke-virtual {p2, v0}, Lah5;->a(I)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "FirebaseCrashlytics"

    const-string v0, "HTTP request failed."

    .line 34
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    :cond_3
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 36
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "An invalid data collection token was used."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
