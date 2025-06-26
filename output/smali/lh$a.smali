.class public Llh$a;
.super Lth;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llh;->N(Landroid/view/View;FF)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;


# direct methods
.method public constructor <init>(Llh;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p2, p0, Llh$a;->a:Landroid/view/View;

    invoke-direct {p0}, Lth;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lqh;)V
    .locals 3

    .line 1
    iget-object v0, p0, Llh$a;->a:Landroid/view/View;

    .line 2
    sget-object v1, Lci;->a:Lii;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0, v2}, Lii;->e(Landroid/view/View;F)V

    .line 3
    iget-object v0, p0, Llh$a;->a:Landroid/view/View;

    .line 4
    invoke-virtual {v1, v0}, Lii;->a(Landroid/view/View;)V

    .line 5
    invoke-virtual {p1, p0}, Lqh;->x(Lqh$d;)Lqh;

    return-void
.end method
