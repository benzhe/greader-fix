.class public final enum Llx1;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lw63;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Llx1;",
        ">;",
        "Lw63;"
    }
.end annotation


# static fields
.field public static final enum f:Llx1;

.field public static final enum g:Llx1;

.field public static final enum h:Llx1;

.field public static final enum i:Llx1;

.field public static final synthetic j:[Llx1;


# instance fields
.field public final e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Llx1;

    const-string v1, "UNKNOWN_PROTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Llx1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Llx1;->f:Llx1;

    .line 2
    new-instance v1, Llx1;

    const-string v3, "AFMA_SIGNALS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Llx1;-><init>(Ljava/lang/String;II)V

    sput-object v1, Llx1;->g:Llx1;

    .line 3
    new-instance v3, Llx1;

    const-string v5, "UNITY_SIGNALS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Llx1;-><init>(Ljava/lang/String;II)V

    sput-object v3, Llx1;->h:Llx1;

    .line 4
    new-instance v5, Llx1;

    const-string v7, "PARTNER_SIGNALS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Llx1;-><init>(Ljava/lang/String;II)V

    sput-object v5, Llx1;->i:Llx1;

    const/4 v7, 0x4

    new-array v7, v7, [Llx1;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Llx1;->j:[Llx1;

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

    .line 2
    iput p3, p0, Llx1;->e:I

    return-void
.end method

.method public static values()[Llx1;
    .locals 1

    .line 1
    sget-object v0, Llx1;->j:[Llx1;

    invoke-virtual {v0}, [Llx1;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Llx1;

    return-object v0
.end method


# virtual methods
.method public final f()I
    .locals 1

    .line 1
    iget v0, p0, Llx1;->e:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    const-class v1, Llx1;

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

    .line 6
    iget v1, p0, Llx1;->e:I

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
