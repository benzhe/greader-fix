.class public Lxm5;
.super Lph5;
.source "SourceFile"

# interfaces
.implements Lym5;


# instance fields
.field public f:Lah5;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lfl5;)V
    .locals 2

    .line 1
    sget-object v0, Ldl5;->e:Ldl5;

    sget-object v1, Lah5;->a:Lah5;

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lph5;-><init>(Ljava/lang/String;Ljava/lang/String;Lfl5;Ldl5;)V

    .line 3
    iput-object v1, p0, Lxm5;->f:Lah5;

    return-void
.end method


# virtual methods
.method public final d(Lel5;Lum5;)Lel5;
    .locals 2

    .line 1
    iget-object v0, p2, Lum5;->a:Ljava/lang/String;

    const-string v1, "X-CRASHLYTICS-GOOGLE-APP-ID"

    invoke-virtual {p0, p1, v1, v0}, Lxm5;->e(Lel5;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "X-CRASHLYTICS-API-CLIENT-TYPE"

    const-string v1, "android"

    .line 2
    invoke-virtual {p0, p1, v0, v1}, Lxm5;->e(Lel5;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "X-CRASHLYTICS-API-CLIENT-VERSION"

    const-string v1, "17.3.0"

    .line 3
    invoke-virtual {p0, p1, v0, v1}, Lxm5;->e(Lel5;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept"

    const-string v1, "application/json"

    .line 4
    invoke-virtual {p0, p1, v0, v1}, Lxm5;->e(Lel5;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p2, Lum5;->b:Ljava/lang/String;

    const-string v1, "X-CRASHLYTICS-DEVICE-MODEL"

    invoke-virtual {p0, p1, v1, v0}, Lxm5;->e(Lel5;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p2, Lum5;->c:Ljava/lang/String;

    const-string v1, "X-CRASHLYTICS-OS-BUILD-VERSION"

    invoke-virtual {p0, p1, v1, v0}, Lxm5;->e(Lel5;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p2, Lum5;->d:Ljava/lang/String;

    const-string v1, "X-CRASHLYTICS-OS-DISPLAY-VERSION"

    invoke-virtual {p0, p1, v1, v0}, Lxm5;->e(Lel5;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p2, p2, Lum5;->e:Lhj5;

    .line 9
    check-cast p2, Lgj5;

    invoke-virtual {p2}, Lgj5;->b()Ljava/lang/String;

    move-result-object p2

    const-string v0, "X-CRASHLYTICS-INSTALLATION-ID"

    .line 10
    invoke-virtual {p0, p1, v0, p2}, Lxm5;->e(Lel5;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public final e(Lel5;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 1
    iget-object p1, p1, Lel5;->d:Ljava/util/Map;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final f(Lum5;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lum5;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p1, Lum5;->h:Ljava/lang/String;

    const-string v2, "build_version"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p1, Lum5;->g:Ljava/lang/String;

    const-string v2, "display_version"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget v1, p1, Lum5;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "source"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p1, Lum5;->f:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lvh5;->r(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "instance"

    .line 7
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public g(Lgl5;)Lorg/json/JSONObject;
    .locals 5

    .line 1
    iget v0, p1, Lgl5;->a:I

    .line 2
    iget-object v1, p0, Lxm5;->f:Lah5;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Settings result was: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lah5;->b(Ljava/lang/String;)V

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xca

    if-eq v0, v1, :cond_1

    const/16 v1, 0xcb

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3
    iget-object p1, p1, Lgl5;->b:Ljava/lang/String;

    .line 4
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 5
    iget-object v2, p0, Lxm5;->f:Lah5;

    const-string v3, "Failed to parse settings JSON from "

    invoke-static {v3}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 6
    iget-object v4, p0, Lph5;->a:Ljava/lang/String;

    .line 7
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lah5;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    iget-object v0, p0, Lxm5;->f:Lah5;

    const-string v2, "Settings response "

    invoke-static {v2, p1, v0}, Ljo;->G(Ljava/lang/String;Ljava/lang/String;Lah5;)V

    goto :goto_2

    .line 9
    :cond_2
    iget-object p1, p0, Lxm5;->f:Lah5;

    const-string v0, "Failed to retrieve settings from "

    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 10
    iget-object v2, p0, Lph5;->a:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lah5;->d(Ljava/lang/String;)V

    :goto_2
    return-object v1
.end method
