.class public final enum Lgl1$c;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lw63;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgl1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgl1$c;",
        ">;",
        "Lw63;"
    }
.end annotation


# static fields
.field public static final enum f:Lgl1$c;

.field public static final enum g:Lgl1$c;

.field public static final enum h:Lgl1$c;

.field public static final enum i:Lgl1$c;

.field public static final enum j:Lgl1$c;

.field public static final enum k:Lgl1$c;

.field public static final enum l:Lgl1$c;

.field public static final enum m:Lgl1$c;

.field public static final synthetic n:[Lgl1$c;


# instance fields
.field public final e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lgl1$c;

    const-string v1, "DEVICE_IDENTIFIER_NO_ID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lgl1$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgl1$c;->f:Lgl1$c;

    .line 2
    new-instance v1, Lgl1$c;

    const-string v3, "DEVICE_IDENTIFIER_APP_SPECIFIC_ID"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lgl1$c;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lgl1$c;->g:Lgl1$c;

    .line 3
    new-instance v3, Lgl1$c;

    const-string v5, "DEVICE_IDENTIFIER_GLOBAL_ID"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lgl1$c;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lgl1$c;->h:Lgl1$c;

    .line 4
    new-instance v5, Lgl1$c;

    const-string v7, "DEVICE_IDENTIFIER_ADVERTISER_ID"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lgl1$c;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lgl1$c;->i:Lgl1$c;

    .line 5
    new-instance v7, Lgl1$c;

    const-string v9, "DEVICE_IDENTIFIER_ADVERTISER_ID_UNHASHED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lgl1$c;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lgl1$c;->j:Lgl1$c;

    .line 6
    new-instance v9, Lgl1$c;

    const-string v11, "DEVICE_IDENTIFIER_ANDROID_AD_ID"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lgl1$c;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lgl1$c;->k:Lgl1$c;

    .line 7
    new-instance v11, Lgl1$c;

    const-string v13, "DEVICE_IDENTIFIER_GFIBER_ADVERTISING_ID"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lgl1$c;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lgl1$c;->l:Lgl1$c;

    .line 8
    new-instance v13, Lgl1$c;

    const-string v15, "DEVICE_IDENTIFIER_PER_APP_ID"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lgl1$c;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lgl1$c;->m:Lgl1$c;

    const/16 v15, 0x8

    new-array v15, v15, [Lgl1$c;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 9
    sput-object v15, Lgl1$c;->n:[Lgl1$c;

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
    iput p3, p0, Lgl1$c;->e:I

    return-void
.end method

.method public static i(I)Lgl1$c;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :pswitch_0
    sget-object p0, Lgl1$c;->m:Lgl1$c;

    return-object p0

    .line 2
    :pswitch_1
    sget-object p0, Lgl1$c;->l:Lgl1$c;

    return-object p0

    .line 3
    :pswitch_2
    sget-object p0, Lgl1$c;->k:Lgl1$c;

    return-object p0

    .line 4
    :pswitch_3
    sget-object p0, Lgl1$c;->j:Lgl1$c;

    return-object p0

    .line 5
    :pswitch_4
    sget-object p0, Lgl1$c;->i:Lgl1$c;

    return-object p0

    .line 6
    :pswitch_5
    sget-object p0, Lgl1$c;->h:Lgl1$c;

    return-object p0

    .line 7
    :pswitch_6
    sget-object p0, Lgl1$c;->g:Lgl1$c;

    return-object p0

    .line 8
    :pswitch_7
    sget-object p0, Lgl1$c;->f:Lgl1$c;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static values()[Lgl1$c;
    .locals 1

    .line 1
    sget-object v0, Lgl1$c;->n:[Lgl1$c;

    invoke-virtual {v0}, [Lgl1$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgl1$c;

    return-object v0
.end method


# virtual methods
.method public final f()I
    .locals 1

    .line 1
    iget v0, p0, Lgl1$c;->e:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    const-class v1, Lgl1$c;

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
    iget v1, p0, Lgl1$c;->e:I

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
