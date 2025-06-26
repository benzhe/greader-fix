.class public final Lje4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lie4;


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
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lb74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb74<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lb74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb74<",
            "Ljava/lang/Boolean;",
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

    const-string v1, "measurement.sdk.collection.enable_extend_user_property_size"

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v1, v2}, Lz64;->b(Ljava/lang/String;Z)Lb74;

    move-result-object v1

    sput-object v1, Lje4;->a:Lb74;

    const-string v1, "measurement.sdk.collection.last_deep_link_referrer2"

    .line 3
    invoke-virtual {v0, v1, v2}, Lz64;->b(Ljava/lang/String;Z)Lb74;

    move-result-object v1

    sput-object v1, Lje4;->b:Lb74;

    const-string v1, "measurement.sdk.collection.last_deep_link_referrer_campaign2"

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v1, v2}, Lz64;->b(Ljava/lang/String;Z)Lb74;

    move-result-object v1

    sput-object v1, Lje4;->c:Lb74;

    const-string v1, "measurement.sdk.collection.last_gclid_from_referrer2"

    .line 5
    invoke-virtual {v0, v1, v2}, Lz64;->b(Ljava/lang/String;Z)Lb74;

    move-result-object v1

    sput-object v1, Lje4;->d:Lb74;

    const-string v1, "measurement.id.sdk.collection.last_deep_link_referrer2"

    const-wide/16 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Lz64;->a(Ljava/lang/String;J)Lb74;

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

    sget-object v0, Lje4;->a:Lb74;

    .line 1
    invoke-virtual {v0}, Lb74;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 1

    sget-object v0, Lje4;->b:Lb74;

    .line 1
    invoke-virtual {v0}, Lb74;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 1

    sget-object v0, Lje4;->c:Lb74;

    .line 1
    invoke-virtual {v0}, Lb74;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final d()Z
    .locals 1

    sget-object v0, Lje4;->d:Lb74;

    .line 1
    invoke-virtual {v0}, Lb74;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
