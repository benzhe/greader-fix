.class public final Lorg/jsoup/select/Evaluator$IsNthLastChild;
.super Lorg/jsoup/select/Evaluator$CssNthEvaluator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IsNthLastChild"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/jsoup/select/Evaluator$CssNthEvaluator;-><init>(II)V

    return-void
.end method


# virtual methods
.method public calculatePosition(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)I
    .locals 0

    .line 1
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->elementSiblingIndex()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public getPseudoClass()Ljava/lang/String;
    .locals 1

    const-string v0, "nth-last-child"

    return-object v0
.end method
