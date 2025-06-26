.class public final Ld0$j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "j"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Landroid/view/ViewGroup;

.field public f:Landroid/view/View;

.field public g:Landroid/view/View;

.field public h:Lj1;

.field public i:Lh1;

.field public j:Landroid/content/Context;

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Ld0$j;->a:I

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Ld0$j;->o:Z

    return-void
.end method


# virtual methods
.method public a(Lj1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld0$j;->h:Lj1;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Ld0$j;->i:Lh1;

    invoke-virtual {v0, v1}, Lj1;->u(Lp1;)V

    .line 3
    :cond_1
    iput-object p1, p0, Ld0$j;->h:Lj1;

    if-eqz p1, :cond_2

    .line 4
    iget-object v0, p0, Ld0$j;->i:Lh1;

    if-eqz v0, :cond_2

    .line 5
    iget-object v1, p1, Lj1;->a:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Lj1;->b(Lp1;Landroid/content/Context;)V

    :cond_2
    return-void
.end method
