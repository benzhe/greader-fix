.class public final synthetic Lky7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;


# static fields
.field public static final synthetic a:Lky7;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lky7;

    invoke-direct {v0}, Lky7;-><init>()V

    sput-object v0, Lky7;->a:Lky7;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic andThen(Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;)Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;
    .locals 0

    invoke-static {p0, p1}, Lpz7;->$default$andThen(Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;)Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;

    move-result-object p1

    return-object p1
.end method

.method public final applyAsLong(J)J
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public synthetic compose(Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;)Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;
    .locals 0

    invoke-static {p0, p1}, Lpz7;->$default$compose(Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;)Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;

    move-result-object p1

    return-object p1
.end method
