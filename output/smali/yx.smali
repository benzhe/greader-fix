.class public final Lyx;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyx$a;,
        Lyx$d;,
        Lyx$b;,
        Lyx$c;
    }
.end annotation


# static fields
.field public static final m:Lny$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lny$g<",
            "Ls14;",
            ">;"
        }
    .end annotation
.end field

.field public static final n:Lny$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lny$a<",
            "Ls14;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final o:Lny;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lny<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public d:Ljava/lang/String;

.field public e:I

.field public f:Ljava/lang/String;

.field public final g:Z

.field public h:Lg14;

.field public final i:Lay;

.field public final j:Lb20;

.field public k:Lyx$d;

.field public final l:Lyx$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lny$g;

    invoke-direct {v0}, Lny$g;-><init>()V

    sput-object v0, Lyx;->m:Lny$g;

    new-instance v1, Lzx;

    invoke-direct {v1}, Lzx;-><init>()V

    sput-object v1, Lyx;->n:Lny$a;

    new-instance v2, Lny;

    const-string v3, "ClearcutLogger.API"

    invoke-direct {v2, v3, v1, v0}, Lny;-><init>(Ljava/lang/String;Lny$a;Lny$g;)V

    sput-object v2, Lyx;->o:Lny;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLay;Lb20;Lyx$b;)V
    .locals 4

    sget-object p3, Lg14;->f:Lg14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lyx;->e:I

    iput-object p3, p0, Lyx;->h:Lg14;

    iput-object p1, p0, Lyx;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lyx;->b:Ljava/lang/String;

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget v1, p1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v2, "ClearcutLogger"

    const-string v3, "This can\'t happen."

    invoke-static {v2, v3, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2
    :goto_0
    iput v1, p0, Lyx;->c:I

    iput v0, p0, Lyx;->e:I

    iput-object p2, p0, Lyx;->d:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lyx;->f:Ljava/lang/String;

    iput-boolean p4, p0, Lyx;->g:Z

    iput-object p5, p0, Lyx;->i:Lay;

    iput-object p6, p0, Lyx;->j:Lb20;

    new-instance p1, Lyx$d;

    invoke-direct {p1}, Lyx$d;-><init>()V

    iput-object p1, p0, Lyx;->k:Lyx$d;

    iput-object p3, p0, Lyx;->h:Lg14;

    iput-object p7, p0, Lyx;->l:Lyx$b;

    if-eqz p4, :cond_0

    const/4 p1, 0x1

    const-string p2, "can\'t be anonymous with an upload account"

    invoke-static {p1, p2}, Lbi;->c(ZLjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lyx;
    .locals 9

    new-instance v8, Lyx;

    .line 1
    new-instance v5, Lhz3;

    invoke-direct {v5, p0}, Lhz3;-><init>(Landroid/content/Context;)V

    .line 2
    sget-object v6, Ld20;->a:Ld20;

    new-instance v7, Lx14;

    invoke-direct {v7, p0}, Lx14;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lyx;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLay;Lb20;Lyx$b;)V

    return-object v8
.end method
