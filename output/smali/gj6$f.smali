.class public final enum Lgj6$f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgj6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgj6$f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lgj6$f;

.field public static final enum f:Lgj6$f;

.field public static final enum g:Lgj6$f;

.field public static final enum h:Lgj6$f;

.field public static final enum i:Lgj6$f;

.field public static final enum j:Lgj6$f;

.field public static final enum k:Lgj6$f;

.field public static final synthetic l:[Lgj6$f;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lgj6$f;

    const-string v1, "GET_MEMOIZED_IS_INITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lgj6$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgj6$f;->e:Lgj6$f;

    .line 2
    new-instance v1, Lgj6$f;

    const-string v3, "SET_MEMOIZED_IS_INITIALIZED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lgj6$f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lgj6$f;->f:Lgj6$f;

    .line 3
    new-instance v3, Lgj6$f;

    const-string v5, "BUILD_MESSAGE_INFO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lgj6$f;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lgj6$f;->g:Lgj6$f;

    .line 4
    new-instance v5, Lgj6$f;

    const-string v7, "NEW_MUTABLE_INSTANCE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lgj6$f;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lgj6$f;->h:Lgj6$f;

    .line 5
    new-instance v7, Lgj6$f;

    const-string v9, "NEW_BUILDER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lgj6$f;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lgj6$f;->i:Lgj6$f;

    .line 6
    new-instance v9, Lgj6$f;

    const-string v11, "GET_DEFAULT_INSTANCE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lgj6$f;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lgj6$f;->j:Lgj6$f;

    .line 7
    new-instance v11, Lgj6$f;

    const-string v13, "GET_PARSER"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lgj6$f;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lgj6$f;->k:Lgj6$f;

    const/4 v13, 0x7

    new-array v13, v13, [Lgj6$f;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 8
    sput-object v13, Lgj6$f;->l:[Lgj6$f;

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

.method public static valueOf(Ljava/lang/String;)Lgj6$f;
    .locals 1

    .line 1
    const-class v0, Lgj6$f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgj6$f;

    return-object p0
.end method

.method public static values()[Lgj6$f;
    .locals 1

    .line 1
    sget-object v0, Lgj6$f;->l:[Lgj6$f;

    invoke-virtual {v0}, [Lgj6$f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgj6$f;

    return-object v0
.end method
