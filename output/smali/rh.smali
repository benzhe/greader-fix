.class public Lrh;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lf4;

.field public final synthetic b:Lqh;


# direct methods
.method public constructor <init>(Lqh;Lf4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrh;->b:Lqh;

    iput-object p2, p0, Lrh;->a:Lf4;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrh;->a:Lf4;

    invoke-virtual {v0, p1}, Lm4;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lrh;->b:Lqh;

    iget-object v0, v0, Lqh;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrh;->b:Lqh;

    iget-object v0, v0, Lqh;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
