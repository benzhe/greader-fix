.class public final enum Lyc6$f$b;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljj6$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyc6$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lyc6$f$b;",
        ">;",
        "Ljj6$a;"
    }
.end annotation


# static fields
.field public static final enum f:Lyc6$f$b;

.field public static final enum g:Lyc6$f$b;

.field public static final enum h:Lyc6$f$b;

.field public static final enum i:Lyc6$f$b;

.field public static final enum j:Lyc6$f$b;

.field public static final enum k:Lyc6$f$b;

.field public static final enum l:Lyc6$f$b;

.field public static final enum m:Lyc6$f$b;

.field public static final enum n:Lyc6$f$b;

.field public static final enum o:Lyc6$f$b;

.field public static final enum p:Lyc6$f$b;

.field public static final enum q:Lyc6$f$b;

.field public static final synthetic r:[Lyc6$f$b;


# instance fields
.field public final e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lyc6$f$b;

    const-string v1, "OPERATOR_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lyc6$f$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lyc6$f$b;->f:Lyc6$f$b;

    .line 2
    new-instance v1, Lyc6$f$b;

    const-string v3, "LESS_THAN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lyc6$f$b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lyc6$f$b;->g:Lyc6$f$b;

    .line 3
    new-instance v3, Lyc6$f$b;

    const-string v5, "LESS_THAN_OR_EQUAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lyc6$f$b;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lyc6$f$b;->h:Lyc6$f$b;

    .line 4
    new-instance v5, Lyc6$f$b;

    const-string v7, "GREATER_THAN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lyc6$f$b;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lyc6$f$b;->i:Lyc6$f$b;

    .line 5
    new-instance v7, Lyc6$f$b;

    const-string v9, "GREATER_THAN_OR_EQUAL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lyc6$f$b;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lyc6$f$b;->j:Lyc6$f$b;

    .line 6
    new-instance v9, Lyc6$f$b;

    const-string v11, "EQUAL"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lyc6$f$b;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lyc6$f$b;->k:Lyc6$f$b;

    .line 7
    new-instance v11, Lyc6$f$b;

    const-string v13, "NOT_EQUAL"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lyc6$f$b;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lyc6$f$b;->l:Lyc6$f$b;

    .line 8
    new-instance v13, Lyc6$f$b;

    const-string v15, "ARRAY_CONTAINS"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lyc6$f$b;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lyc6$f$b;->m:Lyc6$f$b;

    .line 9
    new-instance v15, Lyc6$f$b;

    const-string v14, "IN"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lyc6$f$b;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lyc6$f$b;->n:Lyc6$f$b;

    .line 10
    new-instance v14, Lyc6$f$b;

    const-string v12, "ARRAY_CONTAINS_ANY"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lyc6$f$b;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lyc6$f$b;->o:Lyc6$f$b;

    .line 11
    new-instance v12, Lyc6$f$b;

    const-string v10, "NOT_IN"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lyc6$f$b;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lyc6$f$b;->p:Lyc6$f$b;

    .line 12
    new-instance v10, Lyc6$f$b;

    const-string v8, "UNRECOGNIZED"

    const/16 v6, 0xb

    const/4 v4, -0x1

    invoke-direct {v10, v8, v6, v4}, Lyc6$f$b;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lyc6$f$b;->q:Lyc6$f$b;

    const/16 v4, 0xc

    new-array v4, v4, [Lyc6$f$b;

    aput-object v0, v4, v2

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    aput-object v10, v4, v6

    .line 13
    sput-object v4, Lyc6$f$b;->r:[Lyc6$f$b;

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
    iput p3, p0, Lyc6$f$b;->e:I

    return-void
.end method

.method public static i(I)Lyc6$f$b;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :pswitch_0
    sget-object p0, Lyc6$f$b;->p:Lyc6$f$b;

    return-object p0

    .line 2
    :pswitch_1
    sget-object p0, Lyc6$f$b;->o:Lyc6$f$b;

    return-object p0

    .line 3
    :pswitch_2
    sget-object p0, Lyc6$f$b;->n:Lyc6$f$b;

    return-object p0

    .line 4
    :pswitch_3
    sget-object p0, Lyc6$f$b;->m:Lyc6$f$b;

    return-object p0

    .line 5
    :pswitch_4
    sget-object p0, Lyc6$f$b;->l:Lyc6$f$b;

    return-object p0

    .line 6
    :pswitch_5
    sget-object p0, Lyc6$f$b;->k:Lyc6$f$b;

    return-object p0

    .line 7
    :pswitch_6
    sget-object p0, Lyc6$f$b;->j:Lyc6$f$b;

    return-object p0

    .line 8
    :pswitch_7
    sget-object p0, Lyc6$f$b;->i:Lyc6$f$b;

    return-object p0

    .line 9
    :pswitch_8
    sget-object p0, Lyc6$f$b;->h:Lyc6$f$b;

    return-object p0

    .line 10
    :pswitch_9
    sget-object p0, Lyc6$f$b;->g:Lyc6$f$b;

    return-object p0

    .line 11
    :pswitch_a
    sget-object p0, Lyc6$f$b;->f:Lyc6$f$b;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public static valueOf(Ljava/lang/String;)Lyc6$f$b;
    .locals 1

    .line 1
    const-class v0, Lyc6$f$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyc6$f$b;

    return-object p0
.end method

.method public static values()[Lyc6$f$b;
    .locals 1

    .line 1
    sget-object v0, Lyc6$f$b;->r:[Lyc6$f$b;

    invoke-virtual {v0}, [Lyc6$f$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyc6$f$b;

    return-object v0
.end method


# virtual methods
.method public final g()I
    .locals 2

    .line 1
    sget-object v0, Lyc6$f$b;->q:Lyc6$f$b;

    if-eq p0, v0, :cond_0

    .line 2
    iget v0, p0, Lyc6$f$b;->e:I

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
