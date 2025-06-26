.class public final synthetic Lby7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableLongConsumer;


# static fields
.field public static final synthetic a:Lby7;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lby7;

    invoke-direct {v0}, Lby7;-><init>()V

    sput-object v0, Lby7;->a:Lby7;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(J)V
    .locals 0

    return-void
.end method

.method public synthetic andThen(Lorg/apache/commons/lang3/function/FailableLongConsumer;)Lorg/apache/commons/lang3/function/FailableLongConsumer;
    .locals 0

    invoke-static {p0, p1}, Lnz7;->$default$andThen(Lorg/apache/commons/lang3/function/FailableLongConsumer;Lorg/apache/commons/lang3/function/FailableLongConsumer;)Lorg/apache/commons/lang3/function/FailableLongConsumer;

    move-result-object p1

    return-object p1
.end method
