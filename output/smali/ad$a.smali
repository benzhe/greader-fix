.class public final enum Lad$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lad$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lad$a;

.field public static final enum ON_ANY:Lad$a;

.field public static final enum ON_CREATE:Lad$a;

.field public static final enum ON_DESTROY:Lad$a;

.field public static final enum ON_PAUSE:Lad$a;

.field public static final enum ON_RESUME:Lad$a;

.field public static final enum ON_START:Lad$a;

.field public static final enum ON_STOP:Lad$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lad$a;

    const-string v1, "ON_CREATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lad$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lad$a;->ON_CREATE:Lad$a;

    .line 2
    new-instance v1, Lad$a;

    const-string v3, "ON_START"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lad$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lad$a;->ON_START:Lad$a;

    .line 3
    new-instance v3, Lad$a;

    const-string v5, "ON_RESUME"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lad$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lad$a;->ON_RESUME:Lad$a;

    .line 4
    new-instance v5, Lad$a;

    const-string v7, "ON_PAUSE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lad$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lad$a;->ON_PAUSE:Lad$a;

    .line 5
    new-instance v7, Lad$a;

    const-string v9, "ON_STOP"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lad$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lad$a;->ON_STOP:Lad$a;

    .line 6
    new-instance v9, Lad$a;

    const-string v11, "ON_DESTROY"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lad$a;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lad$a;->ON_DESTROY:Lad$a;

    .line 7
    new-instance v11, Lad$a;

    const-string v13, "ON_ANY"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lad$a;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lad$a;->ON_ANY:Lad$a;

    const/4 v13, 0x7

    new-array v13, v13, [Lad$a;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 8
    sput-object v13, Lad$a;->$VALUES:[Lad$a;

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

.method public static valueOf(Ljava/lang/String;)Lad$a;
    .locals 1

    .line 1
    const-class v0, Lad$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lad$a;

    return-object p0
.end method

.method public static values()[Lad$a;
    .locals 1

    .line 1
    sget-object v0, Lad$a;->$VALUES:[Lad$a;

    invoke-virtual {v0}, [Lad$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lad$a;

    return-object v0
.end method
