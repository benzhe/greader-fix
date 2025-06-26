.class public abstract Le1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp1;


# instance fields
.field public e:Landroid/content/Context;

.field public f:Landroid/content/Context;

.field public g:Lj1;

.field public h:Landroid/view/LayoutInflater;

.field public i:Lp1$a;

.field public j:I

.field public k:I

.field public l:Lq1;

.field public m:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le1;->e:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Le1;->h:Landroid/view/LayoutInflater;

    .line 4
    iput p2, p0, Le1;->j:I

    .line 5
    iput p3, p0, Le1;->k:I

    return-void
.end method


# virtual methods
.method public n()I
    .locals 1

    .line 1
    iget v0, p0, Le1;->m:I

    return v0
.end method

.method public q(Lj1;Ll1;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public r(Lj1;Ll1;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public s(Lp1$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le1;->i:Lp1$a;

    return-void
.end method
