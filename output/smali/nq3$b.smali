.class public final enum Lnq3$b;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lw63;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnq3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnq3$b;",
        ">;",
        "Lw63;"
    }
.end annotation


# static fields
.field public static final enum f:Lnq3$b;

.field public static final enum g:Lnq3$b;

.field public static final enum h:Lnq3$b;

.field public static final enum i:Lnq3$b;

.field public static final synthetic j:[Lnq3$b;


# instance fields
.field public final e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lnq3$b;

    const-string v1, "VIDEO_ERROR_CODE_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lnq3$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnq3$b;->f:Lnq3$b;

    .line 2
    new-instance v1, Lnq3$b;

    const-string v3, "OPENGL_RENDERING_FAILED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lnq3$b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnq3$b;->g:Lnq3$b;

    .line 3
    new-instance v3, Lnq3$b;

    const-string v5, "CACHE_LOAD_FAILED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lnq3$b;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lnq3$b;->h:Lnq3$b;

    .line 4
    new-instance v5, Lnq3$b;

    const-string v7, "ANDROID_TARGET_API_TOO_LOW"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lnq3$b;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lnq3$b;->i:Lnq3$b;

    const/4 v7, 0x4

    new-array v7, v7, [Lnq3$b;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lnq3$b;->j:[Lnq3$b;

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
    iput p3, p0, Lnq3$b;->e:I

    return-void
.end method

.method public static values()[Lnq3$b;
    .locals 1

    .line 1
    sget-object v0, Lnq3$b;->j:[Lnq3$b;

    invoke-virtual {v0}, [Lnq3$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnq3$b;

    return-object v0
.end method


# virtual methods
.method public final f()I
    .locals 1

    .line 1
    iget v0, p0, Lnq3$b;->e:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    const-class v1, Lnq3$b;

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
    iget v1, p0, Lnq3$b;->e:I

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
