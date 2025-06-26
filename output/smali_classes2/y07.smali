.class public Ly07;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/r0adkll/slidr/widget/SliderPanel$h;


# instance fields
.field public final a:Landroid/app/Activity;

.field public final b:Landroid/animation/ArgbEvaluator;


# direct methods
.method public constructor <init>(Landroid/app/Activity;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p2, Landroid/animation/ArgbEvaluator;

    invoke-direct {p2}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object p2, p0, Ly07;->b:Landroid/animation/ArgbEvaluator;

    .line 3
    iput-object p1, p0, Ly07;->a:Landroid/app/Activity;

    return-void
.end method
