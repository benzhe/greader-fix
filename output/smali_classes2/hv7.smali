.class public final synthetic Lhv7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Ljava/lang/Comparable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Comparable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhv7;->a:Ljava/lang/Comparable;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lhv7;->a:Ljava/lang/Comparable;

    check-cast p1, Ljava/lang/Comparable;

    .line 1
    invoke-static {p1}, Lorg/apache/commons/lang3/compare/ComparableUtils;->is(Ljava/lang/Comparable;)Lorg/apache/commons/lang3/compare/ComparableUtils$ComparableCheckBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/apache/commons/lang3/compare/ComparableUtils$ComparableCheckBuilder;->greaterThan(Ljava/lang/Comparable;)Z

    move-result p1

    return p1
.end method
