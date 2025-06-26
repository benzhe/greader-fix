.class public final Ln97;
.super Lh47;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lh47;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lg47;
    .locals 0

    .line 1
    invoke-static {p1}, Lm97;->forTarget(Ljava/lang/String;)Lm97;

    move-result-object p1

    return-object p1
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c()I
    .locals 3

    .line 1
    const-class v0, Ln97;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.app.Application"

    .line 2
    invoke-static {v2, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz v1, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :cond_0
    const/4 v0, 0x3

    :goto_1
    return v0
.end method
