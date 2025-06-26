.class public final Llm2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcb3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcb3<",
        "Lcom/google/android/gms/ads/internal/util/zzf;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lim2;

.field public final b:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lor0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lim2;Lmb3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim2;",
            "Lmb3<",
            "Lor0;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Llm2;->a:Lim2;

    .line 3
    iput-object p2, p0, Llm2;->b:Lmb3;

    return-void
.end method

.method public static a(Lor0;)Lcom/google/android/gms/ads/internal/util/zzf;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lor0;->f()Lcom/google/android/gms/ads/internal/util/zzf;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 2
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Llm2;->b:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lor0;

    invoke-static {v0}, Llm2;->a(Lor0;)Lcom/google/android/gms/ads/internal/util/zzf;

    move-result-object v0

    return-object v0
.end method
