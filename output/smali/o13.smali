.class public final Lo13;
.super Ls63;
.source "SourceFile"

# interfaces
.implements Lf83;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo13$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls63<",
        "Lo13;",
        "Lo13$a;",
        ">;",
        "Lf83;"
    }
.end annotation


# static fields
.field private static volatile zzek:Ll83;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll83<",
            "Lo13;",
            ">;"
        }
    .end annotation
.end field

.field private static final zziis:Lo13;


# instance fields
.field private zziip:Lv13;

.field private zziiq:Lk13;

.field private zziir:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lo13;

    invoke-direct {v0}, Lo13;-><init>()V

    .line 2
    sput-object v0, Lo13;->zziis:Lo13;

    .line 3
    const-class v1, Lo13;

    invoke-static {v1, v0}, Ls63;->s(Ljava/lang/Class;Ls63;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ls63;-><init>()V

    return-void
.end method

.method public static A()Lo13;
    .locals 1

    .line 1
    sget-object v0, Lo13;->zziis:Lo13;

    return-object v0
.end method

.method public static synthetic B()Lo13;
    .locals 1

    .line 1
    sget-object v0, Lo13;->zziis:Lo13;

    return-object v0
.end method


# virtual methods
.method public final q(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object p2, Lp13;->a:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 3
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 4
    :pswitch_2
    sget-object p1, Lo13;->zzek:Ll83;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lo13;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lo13;->zzek:Ll83;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Ls63$a;

    sget-object p3, Lo13;->zziis:Lo13;

    invoke-direct {p1, p3}, Ls63$a;-><init>(Ls63;)V

    .line 8
    sput-object p1, Lo13;->zzek:Ll83;

    .line 9
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 10
    :pswitch_3
    sget-object p1, Lo13;->zziis:Lo13;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zziip"

    aput-object v0, p1, p2

    const-string p2, "zziiq"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zziir"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0002\t\u0003\u000c"

    .line 11
    sget-object p3, Lo13;->zziis:Lo13;

    .line 12
    new-instance v0, Lr83;

    invoke-direct {v0, p3, p2, p1}, Lr83;-><init>(Le83;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 13
    :pswitch_5
    new-instance p1, Lo13$a;

    invoke-direct {p1, p2}, Lo13$a;-><init>(Lp13;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lo13;

    invoke-direct {p1}, Lo13;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final x()Lv13;
    .locals 1

    .line 1
    iget-object v0, p0, Lo13;->zziip:Lv13;

    if-nez v0, :cond_0

    invoke-static {}, Lv13;->A()Lv13;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final y()Lk13;
    .locals 1

    .line 1
    iget-object v0, p0, Lo13;->zziiq:Lk13;

    if-nez v0, :cond_0

    invoke-static {}, Lk13;->y()Lk13;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final z()Lj13;
    .locals 2

    .line 1
    iget v0, p0, Lo13;->zziir:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lj13;->i:Lj13;

    goto :goto_0

    .line 3
    :cond_1
    sget-object v0, Lj13;->h:Lj13;

    goto :goto_0

    .line 4
    :cond_2
    sget-object v0, Lj13;->g:Lj13;

    goto :goto_0

    .line 5
    :cond_3
    sget-object v0, Lj13;->f:Lj13;

    :goto_0
    if-nez v0, :cond_4

    .line 6
    sget-object v0, Lj13;->j:Lj13;

    :cond_4
    return-object v0
.end method
