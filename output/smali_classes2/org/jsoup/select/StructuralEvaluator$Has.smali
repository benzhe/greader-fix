.class public Lorg/jsoup/select/StructuralEvaluator$Has;
.super Lorg/jsoup/select/StructuralEvaluator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/StructuralEvaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Has"
.end annotation


# direct methods
.method public constructor <init>(Lorg/jsoup/select/Evaluator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/jsoup/select/StructuralEvaluator;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/jsoup/select/StructuralEvaluator;->evaluator:Lorg/jsoup/select/Evaluator;

    return-void
.end method


# virtual methods
.method public matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->getAllElements()Lorg/jsoup/select/Elements;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    if-eq v0, p2, :cond_0

    .line 2
    iget-object v1, p0, Lorg/jsoup/select/StructuralEvaluator;->evaluator:Lorg/jsoup/select/Evaluator;

    invoke-virtual {v1, p2, v0}, Lorg/jsoup/select/Evaluator;->matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lorg/jsoup/select/StructuralEvaluator;->evaluator:Lorg/jsoup/select/Evaluator;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, ":has(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
