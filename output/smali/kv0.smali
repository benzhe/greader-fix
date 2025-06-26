.class public final synthetic Lkv0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljg3;


# static fields
.field public static final a:Ljg3;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkv0;

    invoke-direct {v0}, Lkv0;-><init>()V

    sput-object v0, Lkv0;->a:Ljg3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()[Lig3;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lig3;

    .line 1
    new-instance v1, Lnh3;

    invoke-direct {v1}, Lnh3;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lug3;

    invoke-direct {v1}, Lug3;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method
