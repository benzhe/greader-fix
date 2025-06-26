.class public final Lve0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzs0;


# instance fields
.field public final synthetic a:Loe0;


# direct methods
.method public constructor <init>(Loe0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lve0;->a:Loe0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    const-string v0, "Rejecting reference for JS Engine."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lve0;->a:Loe0;

    invoke-virtual {v0}, Lat0;->b()V

    return-void
.end method
