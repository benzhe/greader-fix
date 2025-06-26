.class public Luk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Ljava/lang/String;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:I

.field public final c:Lwk;

.field public final d:Lel;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ConstraintsCmdHandler"

    .line 1
    invoke-static {v0}, Lvj;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Luk;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILwk;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Luk;->a:Landroid/content/Context;

    .line 3
    iput p2, p0, Luk;->b:I

    .line 4
    iput-object p3, p0, Luk;->c:Lwk;

    .line 5
    iget-object p2, p3, Lwk;->f:Lxm;

    .line 6
    new-instance p3, Lel;

    const/4 v0, 0x0

    invoke-direct {p3, p1, p2, v0}, Lel;-><init>(Landroid/content/Context;Lxm;Ldl;)V

    iput-object p3, p0, Luk;->d:Lel;

    return-void
.end method
