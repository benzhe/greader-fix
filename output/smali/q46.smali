.class public final synthetic Lq46;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltc7;


# static fields
.field public static final e:Lq46;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lq46;

    invoke-direct {v0}, Lq46;-><init>()V

    sput-object v0, Lq46;->e:Lq46;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lqg6;

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lqg6;->F()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Successfully fetched %d messages from backend"

    .line 3
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Ln56;->u1(Ljava/lang/String;)V

    return-void
.end method
