.class public final enum Lvh5$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvh5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lvh5$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lvh5$b;

.field public static final enum f:Lvh5$b;

.field public static final enum g:Lvh5$b;

.field public static final enum h:Lvh5$b;

.field public static final enum i:Lvh5$b;

.field public static final enum j:Lvh5$b;

.field public static final enum k:Lvh5$b;

.field public static final enum l:Lvh5$b;

.field public static final enum m:Lvh5$b;

.field public static final enum n:Lvh5$b;

.field public static final o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lvh5$b;",
            ">;"
        }
    .end annotation
.end field

.field public static final synthetic p:[Lvh5$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lvh5$b;

    const-string v1, "X86_32"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lvh5$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lvh5$b;->e:Lvh5$b;

    .line 2
    new-instance v1, Lvh5$b;

    const-string v3, "X86_64"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lvh5$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lvh5$b;->f:Lvh5$b;

    .line 3
    new-instance v3, Lvh5$b;

    const-string v5, "ARM_UNKNOWN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lvh5$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lvh5$b;->g:Lvh5$b;

    .line 4
    new-instance v5, Lvh5$b;

    const-string v7, "PPC"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lvh5$b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lvh5$b;->h:Lvh5$b;

    .line 5
    new-instance v7, Lvh5$b;

    const-string v9, "PPC64"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lvh5$b;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lvh5$b;->i:Lvh5$b;

    .line 6
    new-instance v9, Lvh5$b;

    const-string v11, "ARMV6"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lvh5$b;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lvh5$b;->j:Lvh5$b;

    .line 7
    new-instance v11, Lvh5$b;

    const-string v13, "ARMV7"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lvh5$b;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lvh5$b;->k:Lvh5$b;

    .line 8
    new-instance v13, Lvh5$b;

    const-string v15, "UNKNOWN"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lvh5$b;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lvh5$b;->l:Lvh5$b;

    .line 9
    new-instance v15, Lvh5$b;

    const-string v14, "ARMV7S"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lvh5$b;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lvh5$b;->m:Lvh5$b;

    .line 10
    new-instance v14, Lvh5$b;

    const-string v12, "ARM64"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lvh5$b;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lvh5$b;->n:Lvh5$b;

    const/16 v12, 0xa

    new-array v12, v12, [Lvh5$b;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v1, 0x4

    aput-object v7, v12, v1

    const/4 v2, 0x5

    aput-object v9, v12, v2

    const/4 v2, 0x6

    aput-object v11, v12, v2

    const/4 v2, 0x7

    aput-object v13, v12, v2

    const/16 v2, 0x8

    aput-object v15, v12, v2

    aput-object v14, v12, v10

    .line 11
    sput-object v12, Lvh5$b;->p:[Lvh5$b;

    .line 12
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v2, Lvh5$b;->o:Ljava/util/Map;

    const-string v1, "armeabi-v7a"

    .line 13
    invoke-interface {v2, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "armeabi"

    .line 14
    invoke-interface {v2, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "arm64-v8a"

    .line 15
    invoke-interface {v2, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "x86"

    .line 16
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lvh5$b;
    .locals 1

    .line 1
    const-class v0, Lvh5$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lvh5$b;

    return-object p0
.end method

.method public static values()[Lvh5$b;
    .locals 1

    .line 1
    sget-object v0, Lvh5$b;->p:[Lvh5$b;

    invoke-virtual {v0}, [Lvh5$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lvh5$b;

    return-object v0
.end method
