.class public final synthetic Lqb1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzd1;


# static fields
.field public static final a:Lzd1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lqb1;

    invoke-direct {v0}, Lqb1;-><init>()V

    sput-object v0, Lqb1;->a:Lzd1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/ads/reward/AdMetadataListener;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/ads/reward/AdMetadataListener;->onAdMetadataChanged()V

    return-void
.end method
