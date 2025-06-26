.class public final enum Ls44;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Le94;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ls44;",
        ">;",
        "Le94;"
    }
.end annotation


# static fields
.field public static final enum f:Ls44;

.field public static final enum g:Ls44;

.field public static final enum h:Ls44;

.field public static final enum i:Ls44;

.field public static final enum j:Ls44;

.field public static final enum k:Ls44;

.field public static final synthetic l:[Ls44;


# instance fields
.field public final e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v0, Ls44;

    const-string v1, "AT_TRACKING_MANAGER_AUTHORIZATION_STATUS_UNKNOWN"

    const/4 v2, 0x0

    .line 1
    invoke-direct {v0, v1, v2, v2}, Ls44;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ls44;->f:Ls44;

    new-instance v1, Ls44;

    const-string v3, "AT_TRACKING_MANAGER_AUTHORIZATION_STATUS_RESTRICTED"

    const/4 v4, 0x1

    .line 2
    invoke-direct {v1, v3, v4, v4}, Ls44;-><init>(Ljava/lang/String;II)V

    sput-object v1, Ls44;->g:Ls44;

    new-instance v3, Ls44;

    const-string v5, "AT_TRACKING_MANAGER_AUTHORIZATION_STATUS_DENIED"

    const/4 v6, 0x2

    .line 3
    invoke-direct {v3, v5, v6, v6}, Ls44;-><init>(Ljava/lang/String;II)V

    sput-object v3, Ls44;->h:Ls44;

    new-instance v5, Ls44;

    const-string v7, "AT_TRACKING_MANAGER_AUTHORIZATION_STATUS_AUTHORIZED"

    const/4 v8, 0x3

    .line 4
    invoke-direct {v5, v7, v8, v8}, Ls44;-><init>(Ljava/lang/String;II)V

    sput-object v5, Ls44;->i:Ls44;

    new-instance v7, Ls44;

    const-string v9, "AT_TRACKING_MANAGER_AUTHORIZATION_STATUS_NOT_DETERMINED"

    const/4 v10, 0x4

    .line 5
    invoke-direct {v7, v9, v10, v10}, Ls44;-><init>(Ljava/lang/String;II)V

    sput-object v7, Ls44;->j:Ls44;

    new-instance v9, Ls44;

    const-string v11, "AT_TRACKING_MANAGER_AUTHORIZATION_STATUS_NOT_CONFIGURED"

    const/4 v12, 0x5

    .line 6
    invoke-direct {v9, v11, v12, v12}, Ls44;-><init>(Ljava/lang/String;II)V

    sput-object v9, Ls44;->k:Ls44;

    const/4 v11, 0x6

    new-array v11, v11, [Ls44;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Ls44;->l:[Ls44;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Ls44;->e:I

    return-void
.end method

.method public static values()[Ls44;
    .locals 1

    sget-object v0, Ls44;->l:[Ls44;

    .line 1
    invoke-virtual {v0}, [Ls44;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ls44;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    .line 1
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Ls44;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " number="

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ls44;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
