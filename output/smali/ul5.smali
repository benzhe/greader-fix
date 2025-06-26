.class public Lul5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lul5$d;,
        Lul5$c;,
        Lul5$b;,
        Lul5$a;
    }
.end annotation


# static fields
.field public static final h:[S


# instance fields
.field public final a:Lam5;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lcj5;

.field public final e:Ltl5;

.field public final f:Lul5$a;

.field public g:Ljava/lang/Thread;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [S

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lul5;->h:[S

    return-void

    nop

    :array_0
    .array-data 2
        0xas
        0x14s
        0x1es
        0x3cs
        0x78s
        0x12cs
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcj5;Ltl5;Lam5;Lul5$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p5, p0, Lul5;->a:Lam5;

    .line 3
    iput-object p1, p0, Lul5;->b:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lul5;->c:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lul5;->d:Lcj5;

    .line 6
    iput-object p4, p0, Lul5;->e:Ltl5;

    .line 7
    iput-object p6, p0, Lul5;->f:Lul5$a;

    return-void
.end method


# virtual methods
.method public a(Lxl5;Z)Z
    .locals 5

    const/4 v0, 0x1

    .line 1
    :try_start_0
    new-instance v1, Lvl5;

    iget-object v2, p0, Lul5;->b:Ljava/lang/String;

    iget-object v3, p0, Lul5;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3, p1}, Lvl5;-><init>(Ljava/lang/String;Ljava/lang/String;Lxl5;)V

    .line 2
    iget-object v2, p0, Lul5;->d:Lcj5;

    sget-object v3, Lcj5;->g:Lcj5;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "Report configured to be sent via DataTransport."

    if-ne v2, v3, :cond_0

    .line 3
    :try_start_1
    sget-object p2, Lah5;->a:Lah5;

    invoke-virtual {p2, v4}, Lah5;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v3, Lcj5;->f:Lcj5;

    if-ne v2, v3, :cond_1

    .line 5
    invoke-interface {p1}, Lxl5;->getType()Lxl5$a;

    move-result-object v2

    sget-object v3, Lxl5$a;->e:Lxl5$a;

    if-ne v2, v3, :cond_1

    .line 6
    sget-object p2, Lah5;->a:Lah5;

    invoke-virtual {p2, v4}, Lah5;->b(Ljava/lang/String;)V

    :goto_0
    const/4 p2, 0x1

    goto :goto_2

    .line 7
    :cond_1
    iget-object v2, p0, Lul5;->a:Lam5;

    invoke-interface {v2, v1, p2}, Lam5;->a(Lvl5;Z)Z

    move-result p2

    .line 8
    sget-object v1, Lah5;->a:Lah5;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Crashlytics Reports Endpoint upload "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2

    const-string v3, "complete: "

    goto :goto_1

    :cond_2
    const-string v3, "FAILED: "

    .line 9
    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-interface {p1}, Lxl5;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    .line 11
    invoke-virtual {v1, v3}, Lah5;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "FirebaseCrashlytics"

    const/4 v3, 0x0

    .line 12
    invoke-static {v1, v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_2
    if-eqz p2, :cond_4

    .line 13
    iget-object p2, p0, Lul5;->e:Ltl5;

    .line 14
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-interface {p1}, Lxl5;->remove()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p2

    .line 16
    sget-object v0, Lah5;->a:Lah5;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error occurred sending report "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lah5;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    const/4 v0, 0x0

    :goto_3
    return v0
.end method
