.class public final Lk77;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj67$f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk77$a;,
        Lk77$b;,
        Lk77$c;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/Throwable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "javax.naming.directory.InitialDirContext"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v0, "com.sun.jndi.dns.DnsContextFactory"

    .line 2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 3
    :goto_0
    sput-object v0, Lk77;->a:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lj67$e;
    .locals 2

    .line 1
    sget-object v0, Lk77;->a:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Lk77$b;

    new-instance v1, Lk77$a;

    invoke-direct {v1}, Lk77$a;-><init>()V

    invoke-direct {v0, v1}, Lk77$b;-><init>(Lk77$c;)V

    return-object v0
.end method

.method public b()Ljava/lang/Throwable;
    .locals 1

    .line 1
    sget-object v0, Lk77;->a:Ljava/lang/Throwable;

    return-object v0
.end method
