.class public final synthetic Ls36;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luc7;


# static fields
.field public static final e:Ls36;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls36;

    invoke-direct {v0}, Ls36;-><init>()V

    sput-object v0, Ls36;->e:Ls36;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lng6;

    invoke-virtual {p1}, Lng6;->D()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
