.class public abstract Lorg/jsoup/select/Evaluator$IndexEvaluator;
.super Lorg/jsoup/select/Evaluator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "IndexEvaluator"
.end annotation


# instance fields
.field public index:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/jsoup/select/Evaluator;-><init>()V

    .line 2
    iput p1, p0, Lorg/jsoup/select/Evaluator$IndexEvaluator;->index:I

    return-void
.end method
