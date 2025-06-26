.class public final synthetic Lec1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzd1;


# instance fields
.field public final a:Lgc1;


# direct methods
.method public constructor <init>(Lgc1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lec1;->a:Lgc1;

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lec1;->a:Lgc1;

    check-cast p1, Lhc1;

    .line 1
    iget-object v0, v0, Lgc1;->f:Lsk2;

    iget-object v0, v0, Lsk2;->Z:Lcom/google/android/gms/internal/ads/zzvv;

    invoke-interface {p1, v0}, Lhc1;->s(Lcom/google/android/gms/internal/ads/zzvv;)V

    return-void
.end method
