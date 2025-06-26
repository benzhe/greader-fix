.class public Loz5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp17;


# instance fields
.field public final synthetic a:Lq06;

.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field public final synthetic d:Llz5;


# direct methods
.method public constructor <init>(Llz5;Lq06;Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Loz5;->d:Llz5;

    iput-object p2, p0, Loz5;->a:Lq06;

    iput-object p3, p0, Loz5;->b:Landroid/app/Activity;

    iput-object p4, p0, Loz5;->c:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 1
    iget-object v0, p0, Loz5;->a:Lq06;

    invoke-virtual {v0}, Lq06;->b()Lf06;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lf06;->i:Ljava/lang/Boolean;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Loz5;->a:Lq06;

    .line 5
    invoke-virtual {v0}, Lq06;->f()Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Loz5$a;

    invoke-direct {v1, p0}, Loz5$a;-><init>(Loz5;)V

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 7
    :cond_0
    iget-object v0, p0, Loz5;->d:Llz5;

    .line 8
    iget-object v1, v0, Llz5;->h:Li06;

    .line 9
    new-instance v2, Loz5$b;

    invoke-direct {v2, p0}, Loz5$b;-><init>(Loz5;)V

    const-wide/16 v3, 0x1388

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Li06;->a(Li06$b;JJ)V

    .line 10
    iget-object v0, p0, Loz5;->a:Lq06;

    invoke-virtual {v0}, Lq06;->b()Lf06;

    move-result-object v0

    .line 11
    iget-object v0, v0, Lf06;->k:Ljava/lang/Boolean;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p0, Loz5;->d:Llz5;

    .line 14
    iget-object v1, v0, Llz5;->i:Li06;

    .line 15
    new-instance v2, Loz5$c;

    invoke-direct {v2, p0}, Loz5$c;-><init>(Loz5;)V

    const-wide/16 v3, 0x4e20

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Li06;->a(Li06$b;JJ)V

    .line 16
    :cond_1
    iget-object v0, p0, Loz5;->b:Landroid/app/Activity;

    new-instance v1, Loz5$d;

    invoke-direct {v1, p0}, Loz5$d;-><init>(Loz5;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
