.class public final enum Lw37$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw37;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lw37$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lw37$a;

.field public static final enum f:Lw37$a;

.field public static final enum g:Lw37$a;

.field public static final enum h:Lw37$a;

.field public static final synthetic i:[Lw37$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lw37$a;

    const-string v1, "CT_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lw37$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lw37$a;->e:Lw37$a;

    new-instance v1, Lw37$a;

    const-string v3, "CT_INFO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lw37$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lw37$a;->f:Lw37$a;

    new-instance v3, Lw37$a;

    const-string v5, "CT_WARNING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lw37$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lw37$a;->g:Lw37$a;

    new-instance v5, Lw37$a;

    const-string v7, "CT_ERROR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lw37$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lw37$a;->h:Lw37$a;

    const/4 v7, 0x4

    new-array v7, v7, [Lw37$a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 2
    sput-object v7, Lw37$a;->i:[Lw37$a;

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

.method public static valueOf(Ljava/lang/String;)Lw37$a;
    .locals 1

    .line 1
    const-class v0, Lw37$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lw37$a;

    return-object p0
.end method

.method public static values()[Lw37$a;
    .locals 1

    .line 1
    sget-object v0, Lw37$a;->i:[Lw37$a;

    invoke-virtual {v0}, [Lw37$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lw37$a;

    return-object v0
.end method
