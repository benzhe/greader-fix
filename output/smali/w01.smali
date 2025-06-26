.class public final Lw01;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcb3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcb3<",
        "Lcom/google/android/gms/ads/internal/zzb;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lu01;


# direct methods
.method public constructor <init>(Lu01;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lw01;->a:Lu01;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lw01;->a:Lu01;

    .line 2
    iget-object v0, v0, Lu01;->a:Lu01$a;

    .line 3
    new-instance v8, Lcom/google/android/gms/ads/internal/zzb;

    .line 4
    check-cast v0, Lmz0;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v2, Lqv0;

    invoke-direct {v2}, Lqv0;-><init>()V

    .line 7
    new-instance v3, Lau0;

    invoke-direct {v3}, Lau0;-><init>()V

    .line 8
    new-instance v4, Llp0;

    .line 9
    new-instance v0, Lkp0;

    invoke-direct {v0}, Lkp0;-><init>()V

    .line 10
    invoke-direct {v4, v0}, Llp0;-><init>(Lop0;)V

    .line 11
    new-instance v5, Lip3;

    invoke-direct {v5}, Lip3;-><init>()V

    .line 12
    new-instance v6, Ldl0;

    invoke-direct {v6}, Ldl0;-><init>()V

    .line 13
    new-instance v7, Lf60;

    invoke-direct {v7}, Lf60;-><init>()V

    move-object v1, v8

    .line 14
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/ads/internal/zzb;-><init>(Lhw0;Lst0;Lpp0;Lip3;Lel0;Lc60;)V

    return-object v8
.end method
