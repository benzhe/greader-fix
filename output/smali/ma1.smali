.class public final synthetic Lma1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzd1;


# static fields
.field public static final a:Lzd1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lma1;

    invoke-direct {v0}, Lma1;-><init>()V

    sput-object v0, Lma1;->a:Lzd1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lra1;

    .line 2
    sget-object v0, Ldm2;->o:Ldm2;

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1, v1}, Lc50;->x1(Ldm2;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvh;)Lcom/google/android/gms/internal/ads/zzvh;

    move-result-object v0

    .line 4
    invoke-interface {p1, v0}, Lra1;->d(Lcom/google/android/gms/internal/ads/zzvh;)V

    return-void
.end method
