.class public final enum Lir5;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lir5;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lir5;

.field public static final enum f:Lir5;

.field public static final enum g:Lir5;

.field public static final enum h:Lir5;

.field public static final enum i:Lir5;

.field public static final synthetic j:[Lir5;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lir5;

    const-string v1, "Set"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lir5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lir5;->e:Lir5;

    .line 2
    new-instance v1, Lir5;

    const-string v3, "MergeSet"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lir5;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lir5;->f:Lir5;

    .line 3
    new-instance v3, Lir5;

    const-string v5, "Update"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lir5;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lir5;->g:Lir5;

    .line 4
    new-instance v5, Lir5;

    const-string v7, "Argument"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lir5;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lir5;->h:Lir5;

    .line 5
    new-instance v7, Lir5;

    const-string v9, "ArrayArgument"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lir5;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lir5;->i:Lir5;

    const/4 v9, 0x5

    new-array v9, v9, [Lir5;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lir5;->j:[Lir5;

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

.method public static valueOf(Ljava/lang/String;)Lir5;
    .locals 1

    .line 1
    const-class v0, Lir5;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lir5;

    return-object p0
.end method

.method public static values()[Lir5;
    .locals 1

    .line 1
    sget-object v0, Lir5;->j:[Lir5;

    invoke-virtual {v0}, [Lir5;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lir5;

    return-object v0
.end method
