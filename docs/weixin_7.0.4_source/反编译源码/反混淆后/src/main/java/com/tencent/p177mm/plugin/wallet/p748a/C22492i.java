package com.tencent.p177mm.plugin.wallet.p748a;

import com.tencent.matrix.trace.core.AppMethodBeat;
import com.tencent.p177mm.p205bt.C1331a;
import com.tencent.p177mm.p205bt.C1332b;
import java.util.LinkedList;
import p690e.p691a.p692a.C6087a;
import p690e.p691a.p692a.p693a.C6086a;
import p690e.p691a.p692a.p695b.p697b.C6091a;
import p690e.p691a.p692a.p698c.C6093a;

/* renamed from: com.tencent.mm.plugin.wallet.a.i */
public final class C22492i extends C1331a {
    public LinkedList<C46330j> tni = new LinkedList();
    public C1332b tnj;

    public C22492i() {
        AppMethodBeat.m2504i(56651);
        AppMethodBeat.m2505o(56651);
    }

    /* renamed from: op */
    public final int mo4669op(int i, Object... objArr) {
        AppMethodBeat.m2504i(56652);
        int c;
        byte[] bArr;
        if (i == 0) {
            C6093a c6093a = (C6093a) objArr[0];
            c6093a.mo13474e(1, 8, this.tni);
            if (this.tnj != null) {
                c6093a.mo13473c(2, this.tnj);
            }
            AppMethodBeat.m2505o(56652);
            return 0;
        } else if (i == 1) {
            c = C6087a.m9552c(1, 8, this.tni) + 0;
            if (this.tnj != null) {
                c += C6091a.m9571b(2, this.tnj);
            }
            AppMethodBeat.m2505o(56652);
            return c;
        } else if (i == 2) {
            bArr = (byte[]) objArr[0];
            this.tni.clear();
            C6086a c6086a = new C6086a(bArr, unknownTagHandler);
            for (c = C1331a.getNextFieldNumber(c6086a); c > 0; c = C1331a.getNextFieldNumber(c6086a)) {
                if (!super.populateBuilderWithField(c6086a, this, c)) {
                    c6086a.ems();
                }
            }
            AppMethodBeat.m2505o(56652);
            return 0;
        } else if (i == 3) {
            C6086a c6086a2 = (C6086a) objArr[0];
            C22492i c22492i = (C22492i) objArr[1];
            int intValue = ((Integer) objArr[2]).intValue();
            switch (intValue) {
                case 1:
                    LinkedList Vh = c6086a2.mo13445Vh(intValue);
                    int size = Vh.size();
                    for (intValue = 0; intValue < size; intValue++) {
                        bArr = (byte[]) Vh.get(intValue);
                        C46330j c46330j = new C46330j();
                        C6086a c6086a3 = new C6086a(bArr, unknownTagHandler);
                        for (boolean z = true; z; z = c46330j.populateBuilderWithField(c6086a3, c46330j, C1331a.getNextFieldNumber(c6086a3))) {
                        }
                        c22492i.tni.add(c46330j);
                    }
                    AppMethodBeat.m2505o(56652);
                    return 0;
                case 2:
                    c22492i.tnj = c6086a2.BTU.emu();
                    AppMethodBeat.m2505o(56652);
                    return 0;
                default:
                    AppMethodBeat.m2505o(56652);
                    return -1;
            }
        } else {
            AppMethodBeat.m2505o(56652);
            return -1;
        }
    }
}
