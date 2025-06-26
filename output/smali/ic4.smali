.class public final Lic4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhc4;


# static fields
.field public static final a:Lb74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb74<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lb74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb74<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lz64;

    const-string v1, "com.google.android.gms.measurement"

    .line 1
    invoke-static {v1}, Ls64;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lz64;-><init>(Landroid/net/Uri;)V

    const-string v1, "measurement.sdk.attribution.cache"

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v1, v2}, Lz64;->b(Ljava/lang/String;Z)Lb74;

    move-result-object v1

    sput-object v1, Lic4;->a:Lb74;

    const-string v1, "measurement.sdk.attribution.cache.ttl"

    const-wide/32 v2, 0x240c8400

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Lz64;->a(Ljava/lang/String;J)Lb74;

    move-result-object v0

    sput-object v0, Lic4;->b:Lb74;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    sget-object v0, Lic4;->a:Lb74;

    .line 1
    invoke-virtual {v0}, Lb74;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final b()J
    .locals 2

    sget-object v0, Lic4;->b:Lb74;

    .line 1
    invoke-virtual {v0}, Lb74;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
