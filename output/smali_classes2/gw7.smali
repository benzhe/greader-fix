.class public final synthetic Lgw7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lorg/apache/commons/lang3/function/FailableSupplier;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableSupplier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgw7;->a:Lorg/apache/commons/lang3/function/FailableSupplier;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lgw7;->a:Lorg/apache/commons/lang3/function/FailableSupplier;

    .line 1
    invoke-static {v0}, Lorg/apache/commons/lang3/function/Failable;->get(Lorg/apache/commons/lang3/function/FailableSupplier;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
