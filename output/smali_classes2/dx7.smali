.class public final synthetic Ldx7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableDoublePredicate;


# static fields
.field public static final synthetic a:Ldx7;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ldx7;

    invoke-direct {v0}, Ldx7;-><init>()V

    sput-object v0, Ldx7;->a:Ldx7;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic and(Lorg/apache/commons/lang3/function/FailableDoublePredicate;)Lorg/apache/commons/lang3/function/FailableDoublePredicate;
    .locals 0

    invoke-static {p0, p1}, Lhz7;->$default$and(Lorg/apache/commons/lang3/function/FailableDoublePredicate;Lorg/apache/commons/lang3/function/FailableDoublePredicate;)Lorg/apache/commons/lang3/function/FailableDoublePredicate;

    move-result-object p1

    return-object p1
.end method

.method public synthetic negate()Lorg/apache/commons/lang3/function/FailableDoublePredicate;
    .locals 1

    invoke-static {p0}, Lhz7;->$default$negate(Lorg/apache/commons/lang3/function/FailableDoublePredicate;)Lorg/apache/commons/lang3/function/FailableDoublePredicate;

    move-result-object v0

    return-object v0
.end method

.method public synthetic or(Lorg/apache/commons/lang3/function/FailableDoublePredicate;)Lorg/apache/commons/lang3/function/FailableDoublePredicate;
    .locals 0

    invoke-static {p0, p1}, Lhz7;->$default$or(Lorg/apache/commons/lang3/function/FailableDoublePredicate;Lorg/apache/commons/lang3/function/FailableDoublePredicate;)Lorg/apache/commons/lang3/function/FailableDoublePredicate;

    move-result-object p1

    return-object p1
.end method

.method public final test(D)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
