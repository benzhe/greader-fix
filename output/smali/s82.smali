.class public final synthetic Ls82;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv2;


# static fields
.field public static final a:Lcv2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls82;

    invoke-direct {v0}, Ls82;-><init>()V

    sput-object v0, Ls82;->a:Lcv2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Law2;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    new-instance v0, Lv82;

    invoke-direct {v0, p1}, Lv82;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lvt2;->j(Ljava/lang/Object;)Law2;

    move-result-object p1

    return-object p1
.end method
