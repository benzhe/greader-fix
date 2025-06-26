.class public final enum Ly6$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ly6$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Ly6$a;

.field public static final enum f:Ly6$a;

.field public static final enum g:Ly6$a;

.field public static final enum h:Ly6$a;

.field public static final enum i:Ly6$a;

.field public static final enum j:Ly6$a;

.field public static final enum k:Ly6$a;

.field public static final synthetic l:[Ly6$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Ly6$a;

    const-string v1, "INT_TYPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ly6$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ly6$a;->e:Ly6$a;

    .line 2
    new-instance v1, Ly6$a;

    const-string v3, "FLOAT_TYPE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ly6$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ly6$a;->f:Ly6$a;

    .line 3
    new-instance v3, Ly6$a;

    const-string v5, "COLOR_TYPE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ly6$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ly6$a;->g:Ly6$a;

    .line 4
    new-instance v5, Ly6$a;

    const-string v7, "COLOR_DRAWABLE_TYPE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ly6$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ly6$a;->h:Ly6$a;

    .line 5
    new-instance v7, Ly6$a;

    const-string v9, "STRING_TYPE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ly6$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Ly6$a;->i:Ly6$a;

    .line 6
    new-instance v9, Ly6$a;

    const-string v11, "BOOLEAN_TYPE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Ly6$a;-><init>(Ljava/lang/String;I)V

    sput-object v9, Ly6$a;->j:Ly6$a;

    .line 7
    new-instance v11, Ly6$a;

    const-string v13, "DIMENSION_TYPE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Ly6$a;-><init>(Ljava/lang/String;I)V

    sput-object v11, Ly6$a;->k:Ly6$a;

    const/4 v13, 0x7

    new-array v13, v13, [Ly6$a;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 8
    sput-object v13, Ly6$a;->l:[Ly6$a;

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

.method public static valueOf(Ljava/lang/String;)Ly6$a;
    .locals 1

    .line 1
    const-class v0, Ly6$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ly6$a;

    return-object p0
.end method

.method public static values()[Ly6$a;
    .locals 1

    .line 1
    sget-object v0, Ly6$a;->l:[Ly6$a;

    invoke-virtual {v0}, [Ly6$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ly6$a;

    return-object v0
.end method
