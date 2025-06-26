.class public final synthetic Lxi2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lui2;


# direct methods
.method public constructor <init>(Lui2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxi2;->e:Lui2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lxi2;->e:Lui2;

    .line 1
    iget-object v0, v0, Lui2;->d:Lw52;

    sget-object v1, Ldm2;->j:Ldm2;

    const/4 v2, 0x0

    .line 2
    invoke-static {v1, v2, v2}, Lc50;->x1(Ldm2;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvh;)Lcom/google/android/gms/internal/ads/zzvh;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lw52;->Q(Lcom/google/android/gms/internal/ads/zzvh;)V

    return-void
.end method
