.class public final synthetic Ljw7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableBooleanSupplier;


# instance fields
.field public final synthetic a:Lorg/apache/commons/lang3/function/FailablePredicate;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailablePredicate;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljw7;->a:Lorg/apache/commons/lang3/function/FailablePredicate;

    iput-object p2, p0, Ljw7;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 2

    iget-object v0, p0, Ljw7;->a:Lorg/apache/commons/lang3/function/FailablePredicate;

    iget-object v1, p0, Ljw7;->b:Ljava/lang/Object;

    .line 1
    invoke-interface {v0, v1}, Lorg/apache/commons/lang3/function/FailablePredicate;->test(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
