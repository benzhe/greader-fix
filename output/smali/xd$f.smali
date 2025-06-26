.class public final enum Lxd$f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lxd$f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lxd$f;

.field public static final enum f:Lxd$f;

.field public static final enum g:Lxd$f;

.field public static final synthetic h:[Lxd$f;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lxd$f;

    const-string v1, "PENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lxd$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lxd$f;->e:Lxd$f;

    .line 2
    new-instance v1, Lxd$f;

    const-string v3, "RUNNING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lxd$f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lxd$f;->f:Lxd$f;

    .line 3
    new-instance v3, Lxd$f;

    const-string v5, "FINISHED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lxd$f;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lxd$f;->g:Lxd$f;

    const/4 v5, 0x3

    new-array v5, v5, [Lxd$f;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lxd$f;->h:[Lxd$f;

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

.method public static valueOf(Ljava/lang/String;)Lxd$f;
    .locals 1

    .line 1
    const-class v0, Lxd$f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lxd$f;

    return-object p0
.end method

.method public static values()[Lxd$f;
    .locals 1

    .line 1
    sget-object v0, Lxd$f;->h:[Lxd$f;

    invoke-virtual {v0}, [Lxd$f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lxd$f;

    return-object v0
.end method
