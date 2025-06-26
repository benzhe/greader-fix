.class public final Lf86;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljj7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Li47;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Le86;


# direct methods
.method public constructor <init>(Le86;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf86;->a:Le86;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lf86;->a:Le86;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v1, Li47;->c:Li47$d;

    const-string v2, "X-Goog-Api-Key"

    .line 4
    invoke-static {v2, v1}, Li47$f;->a(Ljava/lang/String;Li47$d;)Li47$f;

    move-result-object v2

    const-string v3, "X-Android-Package"

    .line 5
    invoke-static {v3, v1}, Li47$f;->a(Ljava/lang/String;Li47$d;)Li47$f;

    move-result-object v3

    const-string v4, "X-Android-Cert"

    .line 6
    invoke-static {v4, v1}, Li47$f;->a(Ljava/lang/String;Li47$d;)Li47$f;

    move-result-object v1

    .line 7
    new-instance v4, Li47;

    invoke-direct {v4}, Li47;-><init>()V

    .line 8
    iget-object v5, v0, Le86;->a:Lpe5;

    .line 9
    invoke-virtual {v5}, Lpe5;->a()V

    .line 10
    iget-object v5, v5, Lpe5;->a:Landroid/content/Context;

    .line 11
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 12
    iget-object v6, v0, Le86;->a:Lpe5;

    .line 13
    invoke-virtual {v6}, Lpe5;->a()V

    .line 14
    iget-object v6, v6, Lpe5;->c:Lve5;

    .line 15
    iget-object v6, v6, Lve5;->a:Ljava/lang/String;

    .line 16
    invoke-virtual {v4, v2, v6}, Li47;->h(Li47$f;Ljava/lang/Object;)V

    .line 17
    invoke-virtual {v4, v3, v5}, Li47;->h(Li47$f;Ljava/lang/Object;)V

    .line 18
    iget-object v0, v0, Le86;->a:Lpe5;

    .line 19
    invoke-virtual {v0}, Lpe5;->a()V

    .line 20
    iget-object v0, v0, Lpe5;->a:Landroid/content/Context;

    .line 21
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v2, 0x40

    const/4 v3, 0x0

    .line 22
    :try_start_0
    invoke-virtual {v0, v5, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 23
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_1

    array-length v2, v0

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    aget-object v5, v0, v2

    if-nez v5, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    aget-object v0, v0, v2

    .line 25
    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v2, "SHA1"

    .line 26
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 27
    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 28
    sget-object v2, Lde5;->b:Lde5;

    .line 29
    invoke-virtual {v2}, Lde5;->f()Lde5;

    move-result-object v2

    invoke-virtual {v2, v0}, Lde5;->c([B)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    .line 30
    invoke-virtual {v4, v1, v3}, Li47;->h(Li47$f;Ljava/lang/Object;)V

    :cond_2
    return-object v4
.end method
