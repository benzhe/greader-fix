.class public final synthetic Luu7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# static fields
.field public static final synthetic a:Luu7;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Luu7;

    invoke-direct {v0}, Luu7;-><init>()V

    sput-object v0, Luu7;->a:Luu7;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    .line 1
    sget v0, Lorg/apache/commons/lang3/Streams$ArrayCollector;->a:I

    .line 2
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p1
.end method
